.class public final LDb/j;
.super LG5/G;
.source "SourceFile"


# instance fields
.field public final a:Lgc/e;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgc/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/j;->a:Lgc/e;

    invoke-virtual {p1}, Lgc/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDb/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LDb/j;->b:Ljava/lang/String;

    return-object p0
.end method
