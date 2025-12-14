.class public interface abstract Luc/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Luc/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Luc/l;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Luc/l;-><init>(I)V

    sput-object v0, Luc/o;->a:Luc/l;

    return-void
.end method


# virtual methods
.method public abstract a(LJb/f;Ljava/util/ArrayList;)V
.end method

.method public abstract c(LJb/d;)V
.end method
