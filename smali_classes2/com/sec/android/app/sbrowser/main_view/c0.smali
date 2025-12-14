.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->d:Landroid/content/Intent;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->d:Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/c0;->e:Ljava/lang/String;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->a(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method
