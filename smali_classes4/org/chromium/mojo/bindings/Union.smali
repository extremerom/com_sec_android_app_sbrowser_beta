.class public abstract Lorg/chromium/mojo/bindings/Union;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field protected mTag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract encode(Lorg/chromium/mojo/bindings/Encoder;I)V
.end method

.method public which()I
    .locals 0

    iget p0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    return p0
.end method
