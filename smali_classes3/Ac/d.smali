.class public final LAc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LAc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LAc/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LAc/d;->a:LAc/d;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, LAc/e;->a:LAc/e;

    sget-object p0, LGb/e;->f:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LGb/e;

    return-object p0
.end method
