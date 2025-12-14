.class public final synthetic LK9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LK9/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LK9/b;->b:Ljava/lang/String;

    iput p1, p0, LK9/b;->c:I

    iput-object p2, p0, LK9/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LK9/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK9/b;->b:Ljava/lang/String;

    iput-object p2, p0, LK9/b;->d:Ljava/lang/Object;

    iput p3, p0, LK9/b;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LK9/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LS2/a;

    iget-object v0, p0, LK9/b;->b:Ljava/lang/String;

    iget v1, p0, LK9/b;->c:I

    iget-object p0, p0, LK9/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->a(Ljava/lang/String;ILcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;LS2/a;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    iget-object v0, p0, LK9/b;->b:Ljava/lang/String;

    iget-object v1, p0, LK9/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p0, p0, LK9/b;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;->e(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
