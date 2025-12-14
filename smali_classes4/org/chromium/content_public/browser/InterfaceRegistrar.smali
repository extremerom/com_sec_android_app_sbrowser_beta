.class public interface abstract Lorg/chromium/content_public/browser/InterfaceRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/InterfaceRegistrar$Registry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParamType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract registerInterfaces(Lorg/chromium/services/service_manager/InterfaceRegistry;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/services/service_manager/InterfaceRegistry;",
            "TParamType;)V"
        }
    .end annotation
.end method
