.class public abstract Lcom/google/firebase/messaging/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LZ3/x;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lx7/f;->a:Lw7/a;

    sget-object v3, Lcom/google/firebase/messaging/c;->a:Lcom/google/firebase/messaging/c;

    const-class v4, Lcom/google/firebase/messaging/o;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/firebase/messaging/b;->a:Lcom/google/firebase/messaging/b;

    const-class v4, LI7/e;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/firebase/messaging/a;->a:Lcom/google/firebase/messaging/a;

    const-class v4, LI7/d;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LZ3/x;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/16 v1, 0x1d

    invoke-direct {v3, v4, v1, v0, v2}, LZ3/x;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lcom/google/firebase/messaging/o;->a:LZ3/x;

    return-void
.end method
