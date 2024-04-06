-- create database basic
DROP DATABASE IF EXISTS pagila; 
CREATE DATABASE pagila;
\c pagila;

-- create user "rdas"
DROP USER IF EXISTS sample;
CREATE USER sample WITH PASSWORD 'password123';
