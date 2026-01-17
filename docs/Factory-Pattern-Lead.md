# Factory Pattern with Trigger in Salesforce

## Problem
Different LeadSource values require different business logic.

## Solution
Used:
- Interface (LeadProcessor)
- Factory Pattern
- Trigger Handler Pattern

## Flow
Trigger → Handler → Factory → Implementation

## Benefits
- Clean triggers
- Easy to extend
- Real project architecture
