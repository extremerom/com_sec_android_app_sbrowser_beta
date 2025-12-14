.class public final synthetic LB9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;

.field public final synthetic b:I

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB9/d;->a:Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;

    iput p2, p0, LB9/d;->b:I

    iput p3, p0, LB9/d;->c:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    iget-object v0, p0, LB9/d;->a:Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;

    iget v1, p0, LB9/d;->b:I

    iget p0, p0, LB9/d;->c:F

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->f(Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;IFLcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0
.end method
