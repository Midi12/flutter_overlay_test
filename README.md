# flutter_overlay_test

A Windows Flutter transparent overlay

## Getting Started

This project is a starting point for a Windows Flutter overlay application.

## How does it work ?

The c++ part of the Windows application (`windows\runner\win32_window.cpp`) have been modified to spawn a topmost transparent window.
The dart part of the application (`lib\main.dart`) is using a `CustomPainter` widget to draw on a `CustomPaint` canvas. 