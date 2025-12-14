.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/d0;->a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/d0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/d0;->c:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/main_view/d0;->d:Z

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/d0;->a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/d0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/d0;->c:Landroid/content/Intent;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/d0;->d:Z

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->c(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Landroid/content/Intent;ZZ)V

    return-void
.end method
