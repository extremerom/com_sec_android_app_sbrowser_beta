.class public interface abstract Lorg/chromium/printing/Printable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract canPrint()Z
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getPdfFilePath()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract print(II)Z
.end method
