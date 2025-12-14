.class public final LA4/c;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LA4/e;


# direct methods
.method public synthetic constructor <init>(LA4/e;I)V
    .locals 0

    iput p2, p0, LA4/c;->a:I

    iput-object p1, p0, LA4/c;->b:LA4/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LA4/c;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;

    iget-object p0, p0, LA4/c;->b:LA4/e;

    iget-object p0, p0, LA4/e;->b:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/appfunctions/internal/ClassRegistry;

    invoke-direct {v0, p0}, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;-><init>(Lcom/google/android/appfunctions/internal/ClassRegistry;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;

    iget-object p0, p0, LA4/c;->b:LA4/e;

    iget-object p0, p0, LA4/e;->a:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/appfunctions/internal/ClassRegistry;

    invoke-direct {v0, p0}, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;-><init>(Lcom/google/android/appfunctions/internal/ClassRegistry;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
