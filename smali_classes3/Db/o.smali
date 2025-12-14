.class public final LDb/o;
.super LG5/H;
.source "SourceFile"


# instance fields
.field public final b:LDb/k;

.field public final c:LDb/k;


# direct methods
.method public constructor <init>(LDb/k;LDb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/o;->b:LDb/k;

    iput-object p2, p0, LDb/o;->c:LDb/k;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LDb/o;->b:LDb/k;

    iget-object p0, p0, LDb/k;->b:Ljava/lang/String;

    return-object p0
.end method
