.class public interface abstract Lorg/chromium/blink/mojom/ColorChooserFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ColorChooserFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract openColorChooser(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/ColorChooserClient;I[Lorg/chromium/blink/mojom/ColorSuggestion;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ColorChooser;",
            ">;",
            "Lorg/chromium/blink/mojom/ColorChooserClient;",
            "I[",
            "Lorg/chromium/blink/mojom/ColorSuggestion;",
            ")V"
        }
    .end annotation
.end method
