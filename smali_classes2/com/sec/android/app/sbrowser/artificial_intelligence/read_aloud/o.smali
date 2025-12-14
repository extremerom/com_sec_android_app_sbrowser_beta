.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$2;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$2;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;->c:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$2;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;->b:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;->c:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/o;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$2;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$2;Ljava/lang/String;II)V

    return-void
.end method
