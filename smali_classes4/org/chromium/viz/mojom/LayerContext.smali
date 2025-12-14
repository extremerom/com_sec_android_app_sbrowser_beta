.class public interface abstract Lorg/chromium/viz/mojom/LayerContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/LayerContext$Proxy;
    }
.end annotation


# virtual methods
.method public abstract setVisible(Z)V
.end method

.method public abstract updateDisplayTiling(Lorg/chromium/viz/mojom/Tiling;)V
.end method

.method public abstract updateDisplayTree(Lorg/chromium/viz/mojom/LayerTreeUpdate;)V
.end method
