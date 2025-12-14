.class public final Lorg/chromium/media_session/mojom/MediaSessionInfo$SessionState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media_session/mojom/MediaSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media_session/mojom/MediaSessionInfo$SessionState$EnumType;
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x0

.field public static final DUCKING:I = 0x1

.field public static final INACTIVE:I = 0x3

.field public static final MAX_VALUE:I = 0x3

.field public static final MIN_VALUE:I = 0x0

.field public static final SUSPENDED:I = 0x2


# direct methods
.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 0

    return-void
.end method
