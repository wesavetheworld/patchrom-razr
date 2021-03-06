.class public Landroid/provider/BTMapBrowseUtils$MessageListingParams;
.super Ljava/lang/Object;
.source "BTMapBrowseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BTMapBrowseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageListingParams"
.end annotation


# instance fields
.field private filterMessageType:B

.field private filterOriginator:Ljava/lang/String;

.field private filterPeriodBegin:Ljava/lang/String;

.field private filterPeriodEnd:Ljava/lang/String;

.field private filterPriority:B

.field private filterReadStatus:B

.field private filterRecipient:Ljava/lang/String;

.field private listStartOffset:S

.field private maxListCount:S

.field private parameterMask:S

.field private subjectLength:B

.field final synthetic this$0:Landroid/provider/BTMapBrowseUtils;


# direct methods
.method public constructor <init>(Landroid/provider/BTMapBrowseUtils;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 222
    iput-object p1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->this$0:Landroid/provider/BTMapBrowseUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/16 v0, 0x7fff

    iput-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->maxListCount:S

    iput-short v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    .line 223
    iput-byte v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterMessageType:B

    iput-byte v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterReadStatus:B

    iput-byte v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPriority:B

    .line 224
    iput-short v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    iput-short v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->parameterMask:S

    .line 225
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->subjectLength:B

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterOriginator:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterRecipient:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/provider/BTMapBrowseUtils;BBBBSSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "priority"
    .parameter "readStatus"
    .parameter "messageType"
    .parameter "subject"
    .parameter "parameter_mask"
    .parameter "listStart"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "recipient"
    .parameter "originator"

    .prologue
    .line 231
    iput-object p1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->this$0:Landroid/provider/BTMapBrowseUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/16 v0, 0x7fff

    iput-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->maxListCount:S

    const/4 v0, 0x0

    iput-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    .line 232
    const-string v0, "BTMapBrowseUtils"

    const-string v1, "MessageListingParams "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-byte p2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPriority:B

    .line 234
    iput-byte p3, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterReadStatus:B

    .line 235
    iput-byte p4, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterMessageType:B

    .line 236
    iput-byte p5, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->subjectLength:B

    .line 237
    iput-short p6, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->parameterMask:S

    .line 238
    iput-short p7, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    .line 239
    iput-object p8, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    .line 240
    iput-object p9, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    .line 241
    iput-object p10, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterRecipient:Ljava/lang/String;

    .line 242
    iput-object p11, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterOriginator:Ljava/lang/String;

    .line 243
    return-void
.end method

.method private getLongFromDateString(Ljava/lang/String;)J
    .locals 9
    .parameter "date"

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 313
    .local v1, year:I
    const/4 v7, 0x4

    const/4 v8, 0x5

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 314
    .local v2, month:I
    const/4 v7, 0x6

    const/4 v8, 0x7

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 315
    .local v3, day:I
    const/16 v7, 0x9

    const/16 v8, 0xa

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 316
    .local v4, hour:I
    const/16 v7, 0xb

    const/16 v8, 0xc

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 317
    .local v5, minute:I
    const/16 v7, 0xd

    const/16 v8, 0xe

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 318
    .local v6, second:I
    new-instance v0, Ljava/util/GregorianCalendar;

    .end local v0           #cal:Ljava/util/GregorianCalendar;
    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 319
    .restart local v0       #cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    return-wide v7
.end method


# virtual methods
.method public getFilterForPriority(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 266
    const-string v1, "priority"

    .line 267
    .local v1, priority:Ljava/lang/String;
    const/4 v0, 0x0

    .line 268
    .local v0, normal_priority:I
    const-string v2, "MMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    const-string v1, "pri"

    .line 270
    const/16 v0, 0x81

    .line 274
    :cond_0
    :goto_0
    iget-byte v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPriority:B

    packed-switch v2, :pswitch_data_0

    .line 281
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 271
    :cond_1
    const-string v2, "EMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const/4 v0, 0x3

    goto :goto_0

    .line 276
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 278
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFilterForReadStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-byte v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterReadStatus:B

    packed-switch v0, :pswitch_data_0

    .line 260
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 255
    :pswitch_0
    const-string v0, "read = 0"

    goto :goto_0

    .line 257
    :pswitch_1
    const-string v0, "read = 1"

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    const/16 v3, 0xf

    const/4 v1, 0x0

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, filterPeriod:Ljava/lang/String;
    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v1

    .line 290
    :cond_1
    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 291
    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 296
    :cond_2
    const-string v0, "("

    .line 297
    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getLongFromDateString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_3
    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 301
    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getLongFromDateString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 306
    goto :goto_0

    .line 292
    :cond_6
    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 293
    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_2

    goto/16 :goto_0
.end method

.method public getListStartOffset()S
    .locals 1

    .prologue
    .line 249
    iget-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    return v0
.end method

.method public getMaxListCount()S
    .locals 1

    .prologue
    .line 248
    iget-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->maxListCount:S

    return v0
.end method

.method public getSubjectLength()B
    .locals 1

    .prologue
    .line 250
    iget-byte v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->subjectLength:B

    return v0
.end method

.method public isFieldRequired(B)Z
    .locals 3
    .parameter "fieldId"

    .prologue
    const/4 v0, 0x1

    .line 245
    iget-short v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->parameterMask:S

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readStatusFilter()I
    .locals 1

    .prologue
    .line 263
    iget-byte v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterReadStatus:B

    return v0
.end method
