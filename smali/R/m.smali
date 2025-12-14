.class public final LR/m;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LR/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LR/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, LR/m;->a:LR/m;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LB0/e;

    const-string p0, "$this$focusProperties"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, LB0/e;->b:Ljava/lang/Boolean;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
