.class Lcom/chartboost/sdk/CBAPIConnection$1;
.super Ljava/lang/Thread;
.source "CBAPIConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/CBAPIConnection;->sendRequest(Lcom/chartboost/sdk/CBAPIRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBAPIConnection;

.field private final synthetic val$finalDelegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

.field private final synthetic val$finalHandler:Landroid/os/Handler;

.field private final synthetic val$finalHttpClient:Lorg/apache/http/client/HttpClient;

.field private final synthetic val$finalHttpRequest:Lorg/apache/http/client/methods/HttpPost;

.field private final synthetic val$finalRequest:Lcom/chartboost/sdk/CBAPIRequest;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/CBAPIConnection;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Landroid/os/Handler;Lcom/chartboost/sdk/CBAPIConnectionDelegate;Lcom/chartboost/sdk/CBAPIRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->this$0:Lcom/chartboost/sdk/CBAPIConnection;

    iput-object p2, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalHttpClient:Lorg/apache/http/client/HttpClient;

    iput-object p3, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalHttpRequest:Lorg/apache/http/client/methods/HttpPost;

    iput-object p4, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalDelegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    iput-object p6, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalRequest:Lcom/chartboost/sdk/CBAPIRequest;

    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 129
    :try_start_0
    iget-object v9, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalHttpClient:Lorg/apache/http/client/HttpClient;

    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalHttpRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 131
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 132
    .local v7, "status":I
    const/16 v9, 0x12c

    if-ge v7, v9, :cond_1

    const/16 v9, 0xc8

    if-lt v7, v9, :cond_1

    .line 134
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 139
    new-instance v8, Lorg/json/JSONTokener;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 140
    .local v8, "tokener":Lorg/json/JSONTokener;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 142
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "ChartBoost"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Request response received: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "message"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object v2, v3

    .line 145
    .local v2, "finalJsonObject":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalHandler:Landroid/os/Handler;

    new-instance v10, Lcom/chartboost/sdk/CBAPIConnection$1$1;

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalDelegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    iget-object v12, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalRequest:Lcom/chartboost/sdk/CBAPIRequest;

    invoke-direct {v10, p0, v11, v2, v12}, Lcom/chartboost/sdk/CBAPIConnection$1$1;-><init>(Lcom/chartboost/sdk/CBAPIConnection$1;Lcom/chartboost/sdk/CBAPIConnectionDelegate;Lorg/json/JSONObject;Lcom/chartboost/sdk/CBAPIRequest;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "finalJsonObject":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "status":I
    .end local v8    # "tokener":Lorg/json/JSONTokener;
    :goto_1
    return-void

    .line 137
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "status":I
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "status":I
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "ChartBoost"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception on http request: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "status":I
    :cond_1
    :try_start_1
    const-string v9, "ChartBoost"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Request failed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v9, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalHandler:Landroid/os/Handler;

    new-instance v10, Lcom/chartboost/sdk/CBAPIConnection$1$2;

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalDelegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    iget-object v12, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->val$finalRequest:Lcom/chartboost/sdk/CBAPIRequest;

    invoke-direct {v10, p0, v11, v12}, Lcom/chartboost/sdk/CBAPIConnection$1$2;-><init>(Lcom/chartboost/sdk/CBAPIConnection$1;Lcom/chartboost/sdk/CBAPIConnectionDelegate;Lcom/chartboost/sdk/CBAPIRequest;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
