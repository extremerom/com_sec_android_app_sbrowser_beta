.class public final synthetic Lcom/sec/android/app/sbrowser/settings/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/E;->a:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    return-void
.end method


# virtual methods
.method public final onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/E;->a:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->o(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;ZLandroid/os/Bundle;)V

    return-void
.end method
