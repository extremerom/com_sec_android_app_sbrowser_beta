.class public final LDc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJb/W;

.field public final b:Lyc/w;

.field public final c:Lyc/w;


# direct methods
.method public constructor <init>(LJb/W;Lyc/w;Lyc/w;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inProjection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outProjection"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDc/e;->a:LJb/W;

    iput-object p2, p0, LDc/e;->b:Lyc/w;

    iput-object p3, p0, LDc/e;->c:Lyc/w;

    return-void
.end method
