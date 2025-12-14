.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/A;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/A;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->z(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/util/List;)V

    return-void
.end method
