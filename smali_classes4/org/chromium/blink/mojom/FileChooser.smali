.class public interface abstract Lorg/chromium/blink/mojom/FileChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileChooser$EnumerateChosenDirectory_Response;,
        Lorg/chromium/blink/mojom/FileChooser$OpenFileChooser_Response;,
        Lorg/chromium/blink/mojom/FileChooser$Proxy;
    }
.end annotation


# virtual methods
.method public abstract enumerateChosenDirectory(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/blink/mojom/FileChooser$EnumerateChosenDirectory_Response;)V
.end method

.method public abstract openFileChooser(Lorg/chromium/blink/mojom/FileChooserParams;Lorg/chromium/blink/mojom/FileChooser$OpenFileChooser_Response;)V
.end method
