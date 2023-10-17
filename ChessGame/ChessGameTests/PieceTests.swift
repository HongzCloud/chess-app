//
//  PieceTests.swift
//  ChessGameTests
//
//  Created by 오킹 on 2023/10/18.
//

import XCTest
@testable import ChessGame

final class PieceTests: XCTestCase {

    func testMovablePositions_검은_폰의_위치가_file_0_rank_0_일_때_file_0_rank_1_이_포함된_배열_반환() {
        let sut = Piece(category: .pawn(color: .black))
        let positions = sut.movablePositions(currentPosition: (file: 0, rank: 0))
        let target = (file: 0, rank: 1)

        XCTAssertTrue(positions.contains{ $0 == target })
    }

    func testMovablePositions_하얀_폰의_위치가_file_7_rank_7_일_때_file_7_rank_6_이_포함된_배열_반환() {
        let sut = Piece(category: .pawn(color: .white))
        let positions = sut.movablePositions(currentPosition: (file: 7, rank: 7))
        let target = (file: 7, rank: 6)

        XCTAssertTrue(positions.contains{ $0 == target })
    }
}