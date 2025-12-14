.class Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;


# instance fields
.field private final mData:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->lambda$lookup$1(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->lambda$lookup$0(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$lookup$0(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$lookup$1(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V
    .locals 3
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;->call(Z)V

    return-void
.end method

.method public fillMatchingLogins(Ljava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;)V
    .locals 2
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v0, p2, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->signonRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p0, v1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object p1, p2, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;->signonRealm:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-array p1, v1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p0, v1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    new-array p0, v1, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-interface {p3, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/j;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/j;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V
    .locals 3
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;->call(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;->call(Z)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;->call(Z)V

    return-void
.end method

.method public updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V
    .locals 3
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;->call(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;->call(Z)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->mData:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;->call(Z)V

    return-void
.end method
