.class public interface abstract Lorg/chromium/ui/base/PhotoPickerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract launchViaActionGetContent()Z
.end method

.method public abstract launchViaActionPickImages()Z
.end method

.method public abstract launchViaActionPickImagesPlus()Z
.end method

.method public abstract showPhotoPicker(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/PhotoPickerListener;ZLjava/util/List;)Lorg/chromium/ui/base/PhotoPicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/base/WindowAndroid;",
            "Lorg/chromium/ui/base/PhotoPickerListener;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/chromium/ui/base/PhotoPicker;"
        }
    .end annotation
.end method
