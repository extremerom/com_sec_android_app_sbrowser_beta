.class public final synthetic LG9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Lcom/samsung/android/vexfwk/sdk/imagetagger/VexFwkImageTagger;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILcom/samsung/android/vexfwk/sdk/imagetagger/VexFwkImageTagger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG9/a;->a:Ljava/lang/Object;

    iput p2, p0, LG9/a;->b:I

    iput-object p3, p0, LG9/a;->c:Lcom/samsung/android/vexfwk/sdk/imagetagger/VexFwkImageTagger;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LG9/a;->c:Lcom/samsung/android/vexfwk/sdk/imagetagger/VexFwkImageTagger;

    iget-object v1, p0, LG9/a;->a:Ljava/lang/Object;

    iget p0, p0, LG9/a;->b:I

    invoke-static {v1, p0, v0}, Lcom/samsung/android/vexfwk/sdk/imagetagger/VexFwkImageTagger;->f(Ljava/lang/Object;ILcom/samsung/android/vexfwk/sdk/imagetagger/VexFwkImageTagger;)Lcom/samsung/android/vexfwk/param/VexFwkImageTaggerResult;

    move-result-object p0

    return-object p0
.end method
