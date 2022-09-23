package com.example.assignment5.service;

import org.springframework.security.core.Authentication;

public interface CurrentUser {
    Authentication getAuthentication();
}
