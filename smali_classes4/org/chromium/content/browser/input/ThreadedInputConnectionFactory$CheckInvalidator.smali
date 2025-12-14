.class public Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckInvalidator"
.end annotation


# instance fields
.field private mInvalid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->mInvalid:Z

    return-void
.end method

.method public isInvalid()Z
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    iget-boolean p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->mInvalid:Z

    return p0
.end method
