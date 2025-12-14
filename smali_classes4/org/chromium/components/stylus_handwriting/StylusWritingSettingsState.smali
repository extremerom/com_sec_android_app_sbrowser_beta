.class public Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final sInstance:Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;


# instance fields
.field private mDefaultInputMethod:Ljava/lang/String;

.field private mDirectWritingSetting:Ljava/lang/Integer;

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/components/stylus_handwriting/StylusWritingController;",
            ">;"
        }
    .end annotation
.end field

.field private mStylusHandWritingSetting:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    invoke-direct {v0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;-><init>()V

    sput-object v0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->sInstance:Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState$1;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState$1;-><init>(Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;Landroid/os/Handler;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "default_input_method"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v3, "direct_writing"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    const-string v5, "stylus_handwriting_enabled"

    if-lt v3, v4, :cond_0

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->update()V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->notifyObservers()V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->update()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;
    .locals 1

    sget-object v0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->sInstance:Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    return-object v0
.end method

.method private notifyObservers()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/stylus_handwriting/StylusWritingController;

    invoke-virtual {v0}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->onSettingsChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private update()V
    .locals 4

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mDefaultInputMethod:Ljava/lang/String;

    :try_start_0
    const-string v1, "direct_writing"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mDirectWritingSetting:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mDirectWritingSetting:Ljava/lang/Integer;

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const-string v3, "stylus_handwriting_enabled"

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mStylusHandWritingSetting:I

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mStylusHandWritingSetting:I

    :goto_1
    return-void
.end method


# virtual methods
.method public getDefaultInputMethod()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mDefaultInputMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getDirectWritingSetting()Ljava/lang/Integer;
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mDirectWritingSetting:Ljava/lang/Integer;

    return-object p0
.end method

.method public getStylusHandWritingSetting()I
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mStylusHandWritingSetting:I

    return p0
.end method

.method public registerObserver(Lorg/chromium/components/stylus_handwriting/StylusWritingController;)Z
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unregisterObserver(Lorg/chromium/components/stylus_handwriting/StylusWritingController;)Z
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
