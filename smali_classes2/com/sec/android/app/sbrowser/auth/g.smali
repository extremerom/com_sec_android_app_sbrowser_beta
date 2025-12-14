.class public final synthetic Lcom/sec/android/app/sbrowser/auth/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/auth/AuthManager;

.field public final synthetic b:I

.field public final synthetic c:Lcom/sec/android/app/sbrowser/auth/AuthCallback;


# direct methods
.method public synthetic constructor <init>(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/auth/g;->a:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/g;->b:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/g;->c:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    return-void
.end method


# virtual methods
.method public final onActivityResult(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/g;->c:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/g;->a:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/g;->b:I

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->d(Lcom/sec/android/app/sbrowser/auth/AuthManager;ILcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void
.end method
