const std = @import("std");

pub fn main() anyerror!void {
    std.log.info("All your codebase are belong to us.", .{});
    std.log.info("All your codebase are belong to us.", .{});
    std.log.info("All your codebase are belong to us.", .{});
    std.log.info("All your codebase are belong to us.", .{});
    std.log.info("All your codebase are belong to us.", .{});
    std.log.info("All your codebase are belong to us.", .{});
    std.log.info("All your codebase are belong to us.", .{});

    const screenWidth = 800;
    const screenHeight = 450;

    var screenSize:i32 = screenWidth * screenHeight;

    const stdout = std.io.getStdOut().writer();
    try stdout.print("{d}\n", .{screenSize});

    var i: usize = 1;
    while (i <= 16) : (i += 1) {
        if (i % 15 == 0) {
            try stdout.writeAll("ZiggZagg\n");
        } else if (i % 3 == 0) {
            try stdout.writeAll("Zigg\n");
        } else if (i % 5 == 0) {
            try stdout.writeAll("Zagg\n");
        } else {
            try stdout.print("{d}\n", .{i});
        }
    }
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
