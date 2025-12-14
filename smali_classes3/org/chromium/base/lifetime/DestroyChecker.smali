.class public Lorg/chromium/base/lifetime/DestroyChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/lifetime/Destroyable;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIsDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNotDestroyed()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/base/lifetime/DestroyChecker;->checkNotDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/lifetime/DestroyChecker;->mIsDestroyed:Z

    return-void
.end method

.method public isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/base/lifetime/DestroyChecker;->mIsDestroyed:Z

    return p0
.end method
