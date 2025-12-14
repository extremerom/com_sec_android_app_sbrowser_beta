.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/e0;->a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/e0;->b:I

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/main_view/e0;->c:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/main_view/e0;->d:I

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/e0;->a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iget v1, p0, Lcom/sec/android/app/sbrowser/main_view/e0;->b:I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/main_view/e0;->c:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/main_view/e0;->d:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->d(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;IZIZ)V

    return-void
.end method
