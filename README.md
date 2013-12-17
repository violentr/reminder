reminder
========

Task to create reminder for finance controller

We need a system to identify which
estates are due for service charge payments. Table below shows the estates and
service charge due dates.

+-------------+-----------------------+----------------------------------------+
| Estate code | Service charge period | Due dates                              |
+-------------+-----------------------+----------------------------------------+
| 0066S       | Quarterly             |  1st Feb,  3rd May,  1st Aug,  5th Nov |
+- - - - - - -+- - - - - - - - - - - -+- - - - - - - - - - - - - - - - - - - - +
| 0123S       | Quarterly             | 28th Feb, 31st May, 31st Aug, 30th Nov |
+- - - - - - -+- - - - - - - - - - - -+- - - - - - - - - - - - - - - - - - - - +
| 0250S       | Twice a year          | 23rd Jan, 22nd Jun                     |
+-------------+-----------------------+----------------------------------------+


This system should remind financial officers about upcoming service charge due
dates so they can send demand letters to estates before the time. 

For estates with service charge period "Quarterly" system should remind
financial officers one calendar month before service charge due date. 

For estates with service charge period "Twice a year" system should remind
financial officers two calendar months before service charge due date.


Interface to the reminder system (Ruby):

    reminder = Reminder.new(reminder_rules)

    reminder.on(date, estates) # returns estate code and due date of estates
                               # needing reminders

Examples:

+---------------+------------------------------+
| Date          | Reminders                    |
+---------------+------------------------------+
| 1st Jan 2009  | 0066S due date  1st Feb 2009 | 
|               | 0250S due date 23rd Jan 2009 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 1st Feb 2009  | 0066S due date  1st Feb 2009 | 
|               | 0123S due date 28th Feb 2009 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 2nd Feb 1979  | 0123S due date 28th Feb 1979 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 15th Mar 1999 | (no reminders)               |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 21st Apr 2013 | 0066S due date  3rd May 2013 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 22nd Apr 2017 | 0066S due date  3rd May 2017 |
|               | 0250S due date 22nd Jun 2017 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 29th Apr 2000 | 0066S due date  3rd May 2000 |
|               | 0250S due date 22nd Jun 2000 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 30th Apr 2002 | 0066S due date  3rd May 2002 |
|               | 0123S due date 31st May 2002 |
|               | 0250S due date 22nd Jun 2002 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 29th Oct 2011 | 0066S due date  5th Nov 2011 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 30th Oct 2011 | 0066S due date  5th Nov 2011 |
|               | 0123S due date 30th Nov 2011 |
+- - - - - - - -+- - - - - - - - - - - - - - - +
| 24th Dec 2006 | 0250S due date 23rd Jan 2007 |
+---------------+------------------------------+


Implement in Ruby reminder system for the above requirements.
