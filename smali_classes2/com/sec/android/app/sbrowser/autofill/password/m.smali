.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->e:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->b:Z

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->b(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->e:Ljava/lang/Object;

    check-cast v2, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/m;->b:Z

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;->a(Lcom/sec/android/app/sbrowser/autofill/password/PasswordDifferenceCheckerImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordDifferenceChecker$OnQuery_Response;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
