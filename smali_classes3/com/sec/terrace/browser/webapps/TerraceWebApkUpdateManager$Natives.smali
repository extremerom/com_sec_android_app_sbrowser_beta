.class interface abstract Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract storeWebApkUpdateRequestToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z[Ljava/lang/String;[Ljava/lang/String;IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[Ljava/lang/Object;[[Ljava/lang/String;[[BLjava/lang/String;Ljava/lang/String;IZILorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IIJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[[",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZI",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateWebApkFromFile(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$WebApkUpdateCallback;)V
.end method
