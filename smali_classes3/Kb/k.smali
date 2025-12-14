.class public final LKb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LKb/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LKb/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LKb/k;->a:LKb/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LKb/h;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p0

    return-object p0
.end method
