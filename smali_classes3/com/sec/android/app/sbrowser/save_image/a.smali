.class public final synthetic Lcom/sec/android/app/sbrowser/save_image/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/a;->a:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    return-void
.end method


# virtual methods
.method public final onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/a;->a:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->g(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;ZLandroid/os/Bundle;)V

    return-void
.end method
