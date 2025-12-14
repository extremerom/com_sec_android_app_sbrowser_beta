.class public final LA0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/b;


# instance fields
.field public final a:Ltb/m;


# direct methods
.method public constructor <init>(Lsb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ltb/m;

    iput-object p1, p0, LA0/g;->a:Ltb/m;

    return-void
.end method

.method public constructor <init>(Lsb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ltb/m;

    iput-object p1, p0, LA0/g;->a:Ltb/m;

    return-void
.end method


# virtual methods
.method public n(Lm1/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LA0/g;->a:Ltb/m;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
