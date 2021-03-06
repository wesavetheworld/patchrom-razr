.class public final Lcom/motorola/android/xmp/XMPDateTimeFactory;
.super Ljava/lang/Object;
.source "XMPDateTimeFactory.java"


# static fields
.field private static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/xmp/XMPDateTimeFactory;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static convertToLocalTime(Lcom/motorola/android/xmp/XMPDateTime;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 4
    .parameter "dateTime"

    .prologue
    .line 164
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 166
    .local v1, timeInMillis:J
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 167
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 168
    new-instance v3, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v3, v0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v3
.end method

.method public static convertToUTCTime(Lcom/motorola/android/xmp/XMPDateTime;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 6
    .parameter "dateTime"

    .prologue
    .line 147
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 148
    .local v1, timeInMillis:J
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v3, Lcom/motorola/android/xmp/XMPDateTimeFactory;->UTC:Ljava/util/TimeZone;

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 149
    .local v0, cal:Ljava/util/GregorianCalendar;
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 151
    new-instance v3, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v3, v0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v3
.end method

.method public static create(IIIIIII)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .parameter "nanoSecond"

    .prologue
    .line 84
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>()V

    .line 85
    .local v0, dt:Lcom/motorola/android/xmp/XMPDateTime;
    invoke-interface {v0, p0}, Lcom/motorola/android/xmp/XMPDateTime;->setYear(I)V

    .line 86
    invoke-interface {v0, p1}, Lcom/motorola/android/xmp/XMPDateTime;->setMonth(I)V

    .line 87
    invoke-interface {v0, p2}, Lcom/motorola/android/xmp/XMPDateTime;->setDay(I)V

    .line 88
    invoke-interface {v0, p3}, Lcom/motorola/android/xmp/XMPDateTime;->setHour(I)V

    .line 89
    invoke-interface {v0, p4}, Lcom/motorola/android/xmp/XMPDateTime;->setMinute(I)V

    .line 90
    invoke-interface {v0, p5}, Lcom/motorola/android/xmp/XMPDateTime;->setSecond(I)V

    .line 91
    invoke-interface {v0, p6}, Lcom/motorola/android/xmp/XMPDateTime;->setNanoSecond(I)V

    .line 92
    return-object v0
.end method

.method public static createFromCalendar(Ljava/util/Calendar;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 1
    .parameter "calendar"

    .prologue
    .line 65
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, p0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static createFromISO8601(Ljava/lang/String;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 1
    .parameter "strValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, p0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentDateTime()Lcom/motorola/android/xmp/XMPDateTime;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-direct {v0, v1}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static setLocalTimeZone(Lcom/motorola/android/xmp/XMPDateTime;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 2
    .parameter "dateTime"

    .prologue
    .line 130
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    new-instance v1, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v1, v0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method
