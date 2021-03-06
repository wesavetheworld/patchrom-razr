.class public final Lcom/motorola/android/xmp/options/ParseOptions;
.super Lcom/motorola/android/xmp/options/Options;
.source "ParseOptions.java"


# static fields
.field public static final ACCEPT_LATIN_1:I = 0x10

.field public static final FIX_CONTROL_CHARS:I = 0x8

.field public static final REQUIRE_XMP_META:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/android/xmp/options/Options;-><init>()V

    .line 44
    const/16 v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/xmp/options/ParseOptions;->setOption(IZ)V

    .line 45
    return-void
.end method


# virtual methods
.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1
    .parameter "option"

    .prologue
    .line 113
    sparse-switch p1, :sswitch_data_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 115
    :sswitch_0
    const-string v0, "REQUIRE_XMP_META"

    goto :goto_0

    .line 116
    :sswitch_1
    const-string v0, "FIX_CONTROL_CHARS"

    goto :goto_0

    .line 117
    :sswitch_2
    const-string v0, "ACCEPT_LATIN_1"

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public getAcceptLatin1()Z
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/ParseOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getFixControlChars()Z
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/ParseOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getRequireXMPMeta()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/ParseOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x19

    return v0
.end method

.method public setAcceptLatin1(Z)Lcom/motorola/android/xmp/options/ParseOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 103
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/ParseOptions;->setOption(IZ)V

    .line 104
    return-object p0
.end method

.method public setFixControlChars(Z)Lcom/motorola/android/xmp/options/ParseOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/ParseOptions;->setOption(IZ)V

    .line 84
    return-object p0
.end method

.method public setRequireXMPMeta(Z)Lcom/motorola/android/xmp/options/ParseOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/ParseOptions;->setOption(IZ)V

    .line 64
    return-object p0
.end method
