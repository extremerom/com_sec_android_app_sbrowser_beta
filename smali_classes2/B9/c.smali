.class public final synthetic LB9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(IIIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB9/c;->a:I

    iput p2, p0, LB9/c;->b:I

    iput p3, p0, LB9/c;->c:I

    iput p4, p0, LB9/c;->d:I

    iput p5, p0, LB9/c;->e:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p1

    check-cast v5, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    iget v2, p0, LB9/c;->c:I

    iget v3, p0, LB9/c;->d:I

    iget v0, p0, LB9/c;->a:I

    iget v1, p0, LB9/c;->b:I

    iget v4, p0, LB9/c;->e:F

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->j(IIIIFLcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0
.end method
