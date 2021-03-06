module Main where

import Main.Model
import Main.View
import Main.Controller

import Control.Monad.State

program :: StateT TodoList IO ()
program = do
    choice <- requestChoice
    parseChoice choice
    printList
    program

main = runStateT program []
