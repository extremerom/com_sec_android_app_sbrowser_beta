.class public final Lorg/chromium/ui/base/SPenSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sIsSPenSupported:Ljava/lang/Boolean;


# direct methods
.method public static convertSPenEventAction(I)I
    .locals 1

    invoke-static {}, Lorg/chromium/ui/base/SPenSupport;->isSPenSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isSPenSupported()Z
    .locals 6

    sget-object v0, Lorg/chromium/ui/base/SPenSupport;->sIsSPenSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "SAMSUNG"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/ui/base/SPenSupport;->sIsSPenSupported:Ljava/lang/Boolean;

    return v1

    :cond_1
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const-string v5, "com.sec.feature.spen_usp"

    iget-object v4, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/ui/base/SPenSupport;->sIsSPenSupported:Ljava/lang/Boolean;

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/ui/base/SPenSupport;->sIsSPenSupported:Ljava/lang/Boolean;

    return v1
.end method

.method public static isSPenSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lorg/chromium/ui/base/SPenSupport;->isSPenSupported()Z

    move-result p0

    return p0
.end method

.method public static setIsSPenSupported(Z)V
    .locals 0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lorg/chromium/ui/base/SPenSupport;->sIsSPenSupported:Ljava/lang/Boolean;

    return-void
.end method
