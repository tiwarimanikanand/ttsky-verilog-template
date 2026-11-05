# SPDX-License-Identifier: Apache-2.0
# Regression for the UNA CPU+GPU wrapper (RTL and gate level).
# Checks reset behaviour, pin-level sanity, and that outputs never go unknown or non-deterministic.
# It does NOT check instruction results yet: add instruction sequences + expected outputs when available.
import random

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


async def start(dut):
    cocotb.start_soon(Clock(dut.clk, 40, unit="ns").start())
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1


@cocotb.test()
async def test_reset_and_pins(dut):
    await start(dut)
    await ClockCycles(dut.clk, 3)
    assert dut.uio_oe.value == 0xFF, "all bidirectional pins must be outputs"
    assert dut.uo_out.value.is_resolvable, "uo_out has X/Z after reset"
    assert dut.uio_out.value.is_resolvable, "uio_out has X/Z after reset"


@cocotb.test()
async def test_no_unknowns_while_running(dut):
    await start(dut)
    rng = random.Random(1)
    for i in range(400):
        dut.ui_in.value = 0 if i % 7 == 0 else rng.randrange(256)
        await ClockCycles(dut.clk, 1)
        assert dut.uo_out.value.is_resolvable, f"uo_out unknown at cycle {i}"
        assert dut.uio_out.value.is_resolvable, f"uio_out unknown at cycle {i}"


@cocotb.test()
async def test_deterministic_after_reset(dut):
    traces = []
    await start(dut)
    for _ in range(2):
        dut.rst_n.value = 0
        await ClockCycles(dut.clk, 10)
        dut.rst_n.value = 1
        rng = random.Random(7)
        trace = []
        for i in range(300):
            dut.ui_in.value = 0 if i % 7 == 0 else rng.randrange(256)
            await ClockCycles(dut.clk, 1)
            trace.append((int(dut.uo_out.value), int(dut.uio_out.value)))
        traces.append(trace)
    assert traces[0] == traces[1], "output trace differs between two runs from reset"
