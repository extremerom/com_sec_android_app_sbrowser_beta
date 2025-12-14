.class public final LGb/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LGb/n;

.field public static final synthetic e:[LAb/u;


# instance fields
.field public final a:Lcom/google/firebase/messaging/q;

.field public final b:Ljava/lang/Object;

.field public final c:LGb/n;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ltb/p;

    const-class v1, LGb/o;

    const-string v2, "kClass"

    const-string v3, "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "kProperty"

    const-string v5, "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v3

    const-string v5, "kProperty0"

    const-string v6, "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v5, v6, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v5

    const-string v6, "kProperty1"

    const-string v7, "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v6, v7, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v6

    const-string v7, "kProperty2"

    const-string v8, "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v7, v8, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v7

    const-string v8, "kMutableProperty0"

    const-string v9, "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v8, v9, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v8

    const-string v9, "kMutableProperty1"

    const-string v10, "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v9, v10, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v9

    const-string v10, "kMutableProperty2"

    const-string v11, "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-static {v1, v10, v11, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v5, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v8, v2, v0

    const/4 v0, 0x6

    aput-object v9, v2, v0

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v2, LGb/o;->e:[LAb/u;

    new-instance v0, LGb/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LGb/o;->d:LGb/n;

    return-void
.end method

.method public constructor <init>(LMb/B;Lcom/google/firebase/messaging/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LGb/o;->a:Lcom/google/firebase/messaging/q;

    sget-object p2, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance v0, LGb/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LGb/m;-><init>(LMb/B;I)V

    invoke-static {p2, v0}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LGb/o;->b:Ljava/lang/Object;

    new-instance p1, LGb/n;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGb/o;->c:LGb/n;

    return-void
.end method
