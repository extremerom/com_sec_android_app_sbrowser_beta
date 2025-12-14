.class public Lcom/sec/android/app/sbrowser/scloud/account/AccountRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static handleAccountTokenResponse(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;JLcom/sec/android/app/sbrowser/scloud/account/InternetAccount;Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received the token : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expired_in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " refresh-token: "

    const-string v2, " expires_in: "

    invoke-static {v0, v1, p4, v2}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountRequestHelper"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    invoke-direct {v0, p7, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;Ljava/lang/String;J)V

    invoke-virtual {v0, p4}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setRefreshToken(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setRefreshTokenExpiredTime(J)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->build()Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;

    move-result-object p1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "com.internet.app.signin"

    invoke-virtual {p2, p3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p3

    array-length p4, p3

    if-lez p4, :cond_0

    const/4 p4, 0x0

    aget-object p3, p3, p4

    invoke-static {p2, p3, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->setInternetAccountToCache(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;)V

    goto :goto_0

    :cond_0
    const-string p2, "Failed to get default account."

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/AccountDataHelper;->insertInternetAccount(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p4, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    iget-object p5, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->userId:Ljava/lang/String;

    iget-object p7, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->apiServerUrl:Ljava/lang/String;

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authServerUrl:Ljava/lang/String;

    const/4 p6, 0x0

    move-object p3, p8

    move-object p8, p0

    invoke-interface/range {p3 .. p8}, Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;->onReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, ""

    const-string p1, "Database operation failure"

    invoke-interface {p8, p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;->setFailureMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No AccountManager instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static handleErrorResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;)V
    .locals 3

    const-string v0, "Failed to send the update-token request to server. error: "

    const-string v1, " errorCode: "

    const-string v2, " errorDescription: "

    invoke-static {v0, p0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccountRequestHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;->setFailureMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateSamsungToken(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;)V
    .locals 17

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    const-string v1, "refresh_token"

    const-string v11, "AccountRequestHelper"

    const-string v2, "https://"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authServerUrl:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/auth/oauth2/token"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "grant_type"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v8, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshToken:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "client_id"

    const-string v6, "4oe3617251"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "UTF-8"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x26

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v3

    move-object v14, v13

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v13, v3

    move-object v14, v13

    goto/16 :goto_9

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3d

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v12, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/16 v4, 0x7530

    invoke-virtual {v12, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v4, "POST"

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v12, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v4, 0xc8

    const-string v5, "jsonObject = "

    if-eq v2, v4, :cond_7

    const/16 v1, 0x130

    if-eq v2, v1, :cond_6

    const/16 v1, 0x190

    if-eq v2, v1, :cond_4

    const/16 v1, 0x193

    if-eq v2, v1, :cond_3

    const/16 v1, 0x19c

    if-eq v2, v1, :cond_2

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v14, v3

    :goto_2
    move-object v3, v12

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v14, v3

    :goto_3
    move-object v3, v12

    goto/16 :goto_9

    :cond_2
    const-string v1, "HTTP_PRECON_FAILED"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;->setNetworkFailure()V

    goto/16 :goto_7

    :cond_3
    const-string v1, "HTTP_FORBIDDEN"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;->setNetworkFailure()V

    goto/16 :goto_7

    :cond_4
    const-string v1, "HTTP_BAD_REQUEST"

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v14, v1

    move-object v3, v12

    :goto_5
    move-object v1, v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v14, v1

    move-object v3, v12

    move-object v1, v0

    goto/16 :goto_9

    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "error"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "error_description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3, v10}, Lcom/sec/android/app/sbrowser/scloud/account/AccountRequestHelper;->handleErrorResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v3, v1

    goto/16 :goto_7

    :cond_6
    :try_start_6
    const-string v1, "HTTP_NOT_MODIFIED"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;->setNetworkFailure()V

    goto/16 :goto_7

    :cond_7
    const-string v2, "HTTP_OK"

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v14, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3

    :cond_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "access_token"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "access_token_expires_in"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "refresh_token_expires_in"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v1, p0

    move-wide v3, v4

    move-object v5, v6

    move-wide v6, v15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/scloud/account/AccountRequestHelper;->handleAccountTokenResponse(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;JLcom/sec/android/app/sbrowser/scloud/account/InternetAccount;Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v3, v14

    :goto_7
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    :goto_8
    invoke-static {v13}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v13, v3

    move-object v14, v13

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v13, v3

    move-object v14, v13

    goto/16 :goto_3

    :goto_9
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSamsungToken fail = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    const-string v2, "Other failure"

    invoke-interface {v10, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;->setFailureMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_8

    :goto_a
    return-void

    :catchall_5
    move-exception v0

    goto/16 :goto_5

    :goto_b
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v1
.end method
