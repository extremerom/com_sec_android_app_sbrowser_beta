.class Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManagerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public storeWebApkUpdateRequestToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z[Ljava/lang/String;[Ljava/lang/String;IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[Ljava/lang/Object;[[Ljava/lang/String;[[BLjava/lang/String;Ljava/lang/String;IZILorg/chromium/base/Callback;)V
    .locals 0

    invoke-static/range {p1 .. p32}, LJ/N;->MI8b4BVD(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;IIJJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZILjava/lang/Object;)V

    return-void
.end method

.method public updateWebApkFromFile(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$WebApkUpdateCallback;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M8OyECIg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
