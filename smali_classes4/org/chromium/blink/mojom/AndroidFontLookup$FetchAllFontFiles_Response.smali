.class public interface abstract Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AndroidFontLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetchAllFontFiles_Response"
.end annotation


# virtual methods
.method public abstract call(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo_base/mojom/ReadOnlyFile;",
            ">;)V"
        }
    .end annotation
.end method
