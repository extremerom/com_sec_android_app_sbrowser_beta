.class final Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion$fromErrorString$1$1;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion;->fromErrorString(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/m;",
        "Lsb/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "LKc/e;",
        "it",
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;",
        "invoke",
        "(LKc/e;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $enumEntry:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion$fromErrorString$1$1;->$enumEntry:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(LKc/e;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;
    .locals 1
    .param p1    # LKc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion$fromErrorString$1$1;->$enumEntry:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LKc/e;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion$fromErrorString$1$1;->invoke(LKc/e;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    move-result-object p0

    return-object p0
.end method
