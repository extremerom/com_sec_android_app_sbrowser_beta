.class public final synthetic Lca/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca/b;->a:Ljava/lang/String;

    iput p2, p0, Lca/b;->b:I

    iput p3, p0, Lca/b;->c:I

    iput p4, p0, Lca/b;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;

    iget v0, p0, Lca/b;->b:I

    iget v1, p0, Lca/b;->c:I

    iget-object v2, p0, Lca/b;->a:Ljava/lang/String;

    iget p0, p0, Lca/b;->d:I

    invoke-static {v2, v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->c(Ljava/lang/String;IIILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void
.end method
