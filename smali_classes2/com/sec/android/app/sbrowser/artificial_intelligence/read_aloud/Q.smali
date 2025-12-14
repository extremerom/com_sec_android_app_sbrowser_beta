.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;Ljava/util/List;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->b:Ljava/util/List;

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->c:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->d:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->b:Ljava/util/List;

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->c:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->d:Ljava/lang/String;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;->e:I

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;Ljava/util/List;ILjava/lang/String;I)V

    return-void
.end method
