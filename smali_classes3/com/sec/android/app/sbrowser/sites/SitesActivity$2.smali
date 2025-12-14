.class Lcom/sec/android/app/sbrowser/sites/SitesActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/SitesActivity;->setSecretModeTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/SitesActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$2;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$2;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSecureDataUnlocked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$2;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->j(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)Lcom/sec/android/app/sbrowser/sites/Sites;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onSecureDataUnlocked()V

    return-void
.end method
