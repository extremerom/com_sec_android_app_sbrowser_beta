.class public final Lz4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz4/c;


# direct methods
.method public constructor <init>(Lz4/c;)V
    .locals 1

    const-string v0, "functionResult"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/f;->a:Lz4/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/extensions/appfunctions/ExecuteAppFunctionResponse;
    .locals 2

    new-instance v0, Lcom/android/extensions/appfunctions/ExecuteAppFunctionResponse;

    iget-object p0, p0, Lz4/f;->a:Lz4/c;

    invoke-virtual {p0}, Lz4/c;->b()Lv/u;

    move-result-object v1

    invoke-static {v1}, LA4/g;->c(Lv/u;)Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-virtual {p0}, Lz4/c;->a()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/extensions/appfunctions/ExecuteAppFunctionResponse;-><init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V

    return-object v0
.end method
