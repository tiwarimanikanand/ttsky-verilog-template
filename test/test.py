# SPDX-FileCopyrightText: © 2026
# SPDX-License-Identifier: Apache-2.0

import os

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

GATE_LEVEL = os.environ.get("GATES") == "yes"


def snapshot(dut):
    """uo_out = DATAOUT, uio_out = {Y, X, OUTSIDECONTROL[5:0]}"""
    return dut.uo_out.value, dut.uio_out.value


@cocotb.test()
async def test_reset_and_run(dut):
    dut._log.info("Start")

    # 20 MHz clock -> 50 ns period
    clock = Clock(dut.clk, 50, unit="ns")
    cocotb.start_soon(clock.start())

    # Reset
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 20)
    dut.rst_n.value = 1

    # All bidirectional pins must be outputs
    await ClockCycles(dut.clk, 1)
    assert dut.uio_oe.value == 0xFF

    # Let the core run with INPUT = 0 and make sure the outputs stay resolvable.
    # (In gate-level simulation un-reset flops start as X, so only log there.)
    for _ in range(200):
        await ClockCycles(dut.clk, 10)
        uo, uio = snapshot(dut)
        if not GATE_LEVEL:
            assert uo.is_resolvable, f"uo_out has X/Z: {uo}"
            assert uio.is_resolvable, f"uio_out has X/Z: {uio}"

    uo, uio = snapshot(dut)
    dut._log.info(f"uo_out={uo} uio_out={uio}")

    # TODO: drive real program bytes on ui_in and check DATAOUT / GPU_X / GPU_Y.
