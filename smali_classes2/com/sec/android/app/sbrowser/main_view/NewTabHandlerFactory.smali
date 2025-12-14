.class public Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    return-object v0
.end method
